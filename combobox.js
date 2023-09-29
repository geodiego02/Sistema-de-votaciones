document.addEventListener("DOMContentLoaded", function() {
    // Función para llenar un select con datos
    function fillSelect(selectElement, data, mensajeDefault) {
        selectElement.innerHTML = ''; // Limpiar opciones existentes
        let defaultOption = document.createElement('option');
        defaultOption.value = '';
        defaultOption.textContent = mensajeDefault;
        selectElement.appendChild(defaultOption);

        data.forEach(item => {
            let option = document.createElement('option');
            option.value = item.id;
            option.textContent = item.nombre;
            selectElement.appendChild(option);
        });
    }

    // Cargar regiones al cargar la página
    fetch('getRegiones.php')
        .then(response => {
            if (!response.ok) {
                throw new Error('Error de red o respuesta no válida del servidor');
            }
            return response.json();
        })
        .then(data => {
            if (data.success) {
                let regionSelect = document.getElementById('region');
                fillSelect(regionSelect, data.data,'Seleccione una región');
            } else{
                console.error(data.message);
            }
            
        });

    // Cargar comunas basadas en la región seleccionada
    document.getElementById('region').addEventListener('change', function() {
        let regionId = this.value;
        fetch(`getComunas.php?region_id=${regionId}`)
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    let comunaSelect = document.getElementById('comuna');
                    fillSelect(comunaSelect, data.data, 'Seleccione una comuna');
                } else {
                    console.error(data.message);
                }
            });
    });

    // Cargar candidatos al cargar la página
    fetch('getCandidatos.php')
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                let candidatoSelect = document.getElementById('candidato');
                fillSelect(candidatoSelect, data.data, 'Seleccione un candidato');
            } else {
                console.error(data.message);
            }
        });
});
