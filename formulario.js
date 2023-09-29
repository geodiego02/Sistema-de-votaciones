document.addEventListener("DOMContentLoaded", function() {
    const form = document.getElementById('votacionForm');

    form.addEventListener('submit', function(event) {
        event.preventDefault(); // Evitar el envío del formulario de la manera tradicional

        // Crear un objeto FormData a partir del formulario
        let formData = new FormData(form);

        // Enviar datos usando Fetch
        fetch('votacion.php', {
            method: 'POST',
            body: formData
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Error de red o respuesta no válida del servidor');
            }
            return response.json();
        })
        .then(data => {
            if (data.success) {
                alert('Voto registrado con éxito!');
                location.reload(true);
            } else {
                // Limpiar mensajes de error anteriores
                document.querySelectorAll('.error').forEach(el => el.textContent = '');

                // Mostrar mensajes de error específicos
                
                for (let field in data.errors) {
                    let errorElement = document.getElementById('error' + field.charAt(0).toUpperCase() + field.slice(1));
                    if (errorElement) {
                        errorElement.textContent = data.errors[field];
                    } else {
                        console.error('No se encontró el elemento para el campo:', field);
                    }
                }
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Ocurrió un error al enviar el formulario: ' + error.message);
        });
        
    });
});
