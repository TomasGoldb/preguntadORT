document.getElementById('spin').addEventListener('click', function() {
    const wheel = document.getElementById('wheel');
    const rotation = Math.floor(Math.random() * 3600) + 360; // Gira entre 360 y 3960 grados

    wheel.style.transform = `rotate(${rotation}deg)`;

    // Calcular el ángulo final (en un rango de 0 a 360 grados)
    const finalAngle = rotation % 360;

    // Definir los rangos de ángulos para cada sección
    const sections = [
        { name: "pagina1.html", startAngle: 0, endAngle: 60 },
        { name: "pagina2.html", startAngle: 60, endAngle: 120 },
        { name: "pagina3.html", startAngle: 120, endAngle: 180 },
        { name: "pagina4.html", startAngle: 180, endAngle: 240 },
        { name: "pagina5.html", startAngle: 240, endAngle: 300 },
        { name: "pagina6.html", startAngle: 300, endAngle: 360 },
    ];

    // Encontrar la sección correspondiente al ángulo final
    const selectedSection = sections.find(section => 
        finalAngle >= section.startAngle && finalAngle < section.endAngle
    );

    // Redirigir a la página correspondiente
    setTimeout(() => {
        window.location.href = selectedSection.name;
    }, 4000); // 4000ms para coincidir con la duración de la animación
});
