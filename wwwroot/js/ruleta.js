document.getElementById('spin').addEventListener('click', function() {
    const wheel = document.getElementById('wheel');
    const rotation = Math.floor(Math.random() * 3600) + 360; // Gira entre 360 y 3960 grados

    wheel.style.transform = `rotate(${rotation}deg)`;

    // Calcular el ángulo final (en un rango de 0 a 360 grados)
    const finalAngle = rotation % 360;

    // Definir los rangos de ángulos para cada sección
    const sections = [
        { name: "ciencia.html", startAngle: 37, endAngle: 89 },
        { name: "geografia.html", startAngle: 89, endAngle: 141 },
        { name: "coronita.html", startAngle: 141, endAngle: 193 },
        { name: "entretenimiento.html", startAngle: 193, endAngle: 245 },
        { name: "artes.html", startAngle: 245, endAngle: 295},
        { name: "deportes.html", startAngle: 295, endAngle: 347 },
        { name: "historia.html", startAngle: 347, endAngle: 37 }
    ];

    // Encontrar la sección correspondiente al ángulo final
    const selectedSection = sections.find(section => 
        finalAngle >= section.startAngle && finalAngle < section.endAngle
    );

    // Redirigir a la página correspondiente
    setTimeout(() => {
        if (selectedSection) {
            window.location.href = selectedSection.name;
        }
    }, 4000); // 4000ms para coincidir con la duración de la animación
});