/**
 * Created by belyi05 on 29.05.2014.
 */

$ ( function () {
    $ ( '#addStudent' ).on ( 'submit', function ( e ) {
        e.preventDefault ( e );
        var url = $ ( this ).attr ( "action" );
        $.ajax ( {
            type    : "POST",
            url     : url,
            data    : $ ( "#addStudent" ).serialize (),
            success : function () {
                alert ( "Студент добавлен" )
            },
            dataType: "text"
        } );
    } )
    $ ( '#more' ).on ( 'click', function ( e ) {
        e.preventDefault ( e );
        var url = 'getAll.php';
        $.ajax ( {
            type    : "POST",
            url     : url,
            data    : {pos: $ ( '#table .user' ).length},
            success : function ( data ) {
                $ ( '#table' ).append ( data );
            },
            dataType: "text"
        } );
    } )
} )