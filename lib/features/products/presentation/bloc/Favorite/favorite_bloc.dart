import 'package:bloc/bloc.dart';
import 'package:i_shop/features/products/domain/usecase/favorite_use_case.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_event.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final AddFavoriteUseCase addFavoriteUseCase;
  final RemoveFavoriteUseCase removeFavoriteUseCase;
  final GetFavoritesUseCase getFavoritesUseCase;

  int intt = 5;

  FavoritesBloc({
    required this.addFavoriteUseCase,
    required this.removeFavoriteUseCase,
    required this.getFavoritesUseCase,
  }) : super(const FavoritesState.loading()) {
    on<AddFavoriteEvent>((event, emit) async {
      emit(const FavoritesState.loading());
      final result = await addFavoriteUseCase.call(event.appProduct);
      await result.fold(
        (failure) async {
          emit(FavoritesState.error(failure.message));
        },
        (_) async {
          final favoritesResult = await getFavoritesUseCase.call();

          favoritesResult.fold(
            (failure) => emit(FavoritesState.error(failure.message)),
            (favorites) => emit(FavoritesState.loaded(favorites)),
          );
        },
      );
    });

    on<RemoveFavoriteEvent>((event, emit) async {
      final result = await removeFavoriteUseCase.call(event.id);

      await result.fold(
        (failure) async {
          emit(FavoritesState.error(failure.message));
        },
        (unit) async {
          final favoritesResult = await getFavoritesUseCase.call();
          await favoritesResult.fold(
            (failure) async {
              emit(FavoritesState.error(failure.message));
            },
            (favorites) async {
              emit(FavoritesState.loaded(favorites));
            },
          );
        },
      );
    });

    on<LoadFavoritesEvent>((event, emit) async {
      emit(const FavoritesState.loading());
      final result = await getFavoritesUseCase.call();

      result.fold(
        (failure) => emit(FavoritesState.error(failure.message)),
        (favorites) => emit(FavoritesState.loaded(favorites)),
      );
    });
  }
}
