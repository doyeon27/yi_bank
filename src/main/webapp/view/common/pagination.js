$(document).ready(function() {
    initPageNumber();
    // Custom event listener for page update
    $(document).on("update_page", function() {
        // 리스트가 갱신되었다고 가정
        initPageNumber();
    });
});

function initPageNumber() {
    let curPage = parseInt( $('div#pagination-container').attr( 'page' ) ); // 현재 페이지 번호
    let cols = parseInt( $('div#pagination-container').attr( 'cols' ) ); // 표시할 페이지 버튼의 갯수
    let views = parseInt( $('div#pagination-container').attr( 'views' )) ; // 한 페이지에 표시되는 리스트 수 (서버에서 결정)
    let totalCount = parseInt( $('div#pagination-container').attr( 'count' ) ); // 총 리스트의 갯수
    let strFuncName = $('div#pagination-container').attr( 'onfunc' ); // 콜백 함수 이름
    let strbefore = $('div#pagination-container').attr( 'before' );
    let strAfter = $('div#pagination-container').attr( 'after' );
    // console.log( "cols, views", cols, views, strFuncName, strbefore, strAfter )


    let maxPageNo = Math.max( 1, Math.ceil( totalCount / views ) );
    curPage = Math.min( curPage, maxPageNo );
    let startPageNo = parseInt( Math.max( 1, curPage - Math.floor(cols/2) ) );
    let endPageNo = parseInt( Math.min( maxPageNo, Math.max( curPage + Math.floor(cols/2), startPageNo + cols -1 ) ) );

    // console.log( "startPageNo, endPageNo", startPageNo, endPageNo )

    $('div#pagination-container').html( "<div></div>" );
    for ( let index = startPageNo; index <= endPageNo; ++index ) {
        $('div#pagination-container div').append(
            "<button " + ( curPage == (index) ? "class='selected'" : "" )
            +" onclick=" + strFuncName + "(" + (index) + ")>"
            + strbefore + (index) + strAfter
            + "</button>"
        );
    }
}

function updatePagination() {
    // Pagination 갱신 로직
    console.log("Pagination Updated");
}
