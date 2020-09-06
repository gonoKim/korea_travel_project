$(window).on('resize', function() {
    if($(window).width() < 992) {
        $('.mPost ul').addClass('pagination-sm');
    }else{
        $('.mPost ul').removeClass('pagination-sm');
    }

    if($(window).width() < 768) {
        $('.mPosttbl th:first-child').removeClass('col-1');
        $('.mPosttbl th:nth-child(2)').removeClass('col-8');
        $('.mPosttbl th:nth-child(3)').removeClass('col-2');
        $('.mPosttbl th:nth-child(4)').removeClass('col-1');

        $('.mPosttbl td:first-child').removeClass('col-1');
        $('.mPosttbl td:nth-child(2)').removeClass('col-8');
        $('.mPosttbl td:nth-child(3)').removeClass('col-2');
        $('.mPosttbl td:nth-child(4)').removeClass('col-1');

        $('.mPosttbl th:first-child').addClass('col-2');
        $('.mPosttbl th:nth-child(2)').addClass('col-5');
        $('.mPosttbl th:nth-child(3)').addClass('col-3');
        $('.mPosttbl th:nth-child(4)').addClass('col-2');

        $('.mPosttbl td:first-child').addClass('col-2');
        $('.mPosttbl td:nth-child(2)').addClass('col-5');
        $('.mPosttbl td:nth-child(3)').addClass('col-3');
        $('.mPosttbl td:nth-child(4)').addClass('col-2');

        $('.mComment ul').addClass('pagination-sm');
    }else{
        $('.mPosttbl th:first-child').removeClass('col-2');
        $('.mPosttbl th:nth-child(2)').removeClass('col-5');
        $('.mPosttbl th:nth-child(3)').removeClass('col-3');
        $('.mPosttbl th:nth-child(4)').removeClass('col-2');

        $('.mPosttbl td:first-child').removeClass('col-2');
        $('.mPosttbl td:nth-child(2)').removeClass('col-5');
        $('.mPosttbl td:nth-child(3)').removeClass('col-3');
        $('.mPosttbl td:nth-child(4)').removeClass('col-2');

        $('.mPosttbl th:first-child').addClass('col-1');
        $('.mPosttbl th:nth-child(2)').addClass('col-8');
        $('.mPosttbl th:nth-child(3)').addClass('col-2');
        $('.mPosttbl th:nth-child(4)').addClass('col-1');

        $('.mPosttbl td:first-child').addClass('col-1');
        $('.mPosttbl td:nth-child(2)').addClass('col-8');
        $('.mPosttbl td:nth-child(3)').addClass('col-2');
        $('.mPosttbl td:nth-child(4)').addClass('col-1');

        $('.mComment ul').removeClass('pagination-sm');
    }
})