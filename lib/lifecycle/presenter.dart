
abstract class Presenter<View> {

  attachView(View view);

  Future<void> onViewReady();

  detachView();
}