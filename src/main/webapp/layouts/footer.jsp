<%--
  Created by IntelliJ IDEA.
  User: josue
  Date: 29/05/2023
  Time: 02:14 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="../assets/js/bootstrap.bundle.min.js"></script>

<script>
    // Agrega el evento de escucha al botón de registro
    $('#btn-registro').click(function() {
        $('#modal-registro').modal('show'); // Muestra la ventana modal

        // Desaparece la ventana modal después de 3 segundos (3000 milisegundos)
        setTimeout(function() {
            $('#modal-registro').modal('hide');
        }, 3000);
    });
</script>


<script>
    feather.replace()
</script>

<script>
    document.getElementById("unlogin").addEventListener("click", function (){
        var xhr = new XMLHttpRequest();
        xhr.open('POST', '/user/unlogin',  true);
        xhr.setRequestHeader('Content-Type', 'aplication/x-wwww-form-urlencoded');
        xhr.onreadystatechange = function(){
            if(xhr.readyState == 4 && xhr.status == 200){
                alert('Se ha cerrado la sesion correctamente')
            }
        };
        xhr.send('logout=true');
    });
</script>