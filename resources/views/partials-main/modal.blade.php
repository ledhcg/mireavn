<div class="modal fade" id="modal_crop_image" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">{{__('main.Change avatar')}}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="img-container">
                    <div class="row">
                        <div class="col-md-6">
                            <img id="image_crop" src="https://avatars0.githubusercontent.com/u/3456749">
                        </div>
                        <div class="col-md-1"></div>
                        <div class="col-md-4 d-flex justify-content-center">
                            <div class="preview_image rounded-circle"></div>
                        </div>
                        <div class="col-md-1">
                        </div>
                        <style>
                            .preview_image {
                                overflow: hidden;
                                width: 160px;
                                height: 160px;
                            }
                        </style>

                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">{{__('main.Close')}}</button>
                <button type="button" class="btn btn-primary btn-sm"  id="crop">{{__('main.Save')}}</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-idea" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header d-flex justify-content-center">
                <h5 class="modal-title" id="modalLabel"><strong>G??p ?? ki???n ph??t tri???n</strong></h5>
            </div>
            <div class="modal-body">
                <p>
                    <em>
                        Ch??ng t??i lu??n mu???n nh???t ???????c s??? ???ng h???, ?????ng h??nh c???a t???t c??? m???i ng?????i ????? ch??ng ta c?? th??? c??ng nhau c?? ???????c nh???ng tr???i nghi???p t???t h??n nh??? vi???c ???ng d???ng c???a c??ng ngh??? m???i v??o ?????i s???ng.
                        <br>V?? v???y ch??ng t??i c?? m???t h??m th?? g??p ?? ????? bi???t ???????c nh???ng mong mu???n c???a c??c b???n.
                        <br>Ch??ng t??i t??n tr???ng nh???ng ?? ki???n ????ng g??p v?? s??? c??? g???ng th???c hi???n n?? n???u kh??? thi.
                        <br>Tr??n tr???ng c???m ??n t???t c??? m???i ng?????i!
                    </em>
                </p>
            </div>
            <form id="contribute-ideas" action="{{route('user.contribute-ideas')}}" method="post">
                @csrf
                @if (Route::has('user.login'))
                    @auth
                        <input type="hidden" id="email-send" name="email" value="{{Auth::user()->email}}">
                    @endauth
                @endif
                <div class="form-floating m-4">
                    <textarea class="form-control" id="ideas" name="ideas" style="height: 120px;" placeholder="Your message"></textarea>
                    <label for="fl-textarea">L???i nh???n</label>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">{{__('main.Close')}}</button>
                    <button type="submit" class="btn btn-primary btn-sm"><i class="ci-idea me-2"></i>????ng g??p</button>
                </div>
            </form>
        </div>
    </div>
</div>


