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