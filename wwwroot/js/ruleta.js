// JavaScript
function handleClick(girarNehuen) {
    const button = document.getElementById('spin');
    const wheel = document.getElementById('wheel');
    if (girarNehuen == 1)
    {
        wheel = document.getElementById('spin');
    }
    const rotation = Math.floor(Math.random() * 3600) + 360; // Gira entre 360 y 3960 grados

    wheel.style.transform = `rotate(${rotation}deg)`;

    // Calcular el ángulo final (en un rango de 0 a 360 grados)
    const finalAngle = rotation % 360;

    // Definir los rangos de ángulos para cada sección
    const sections = [
        { name: "/Home/Pregunta?idCategoria=3", startAngle: 37, endAngle: 89 }, //ciencia
        { name: "/Home/Pregunta?idCategoria=6", startAngle: 89, endAngle: 141 }, //geografia
        { name: "coronita.html", startAngle: 141, endAngle: 193 }, //coronita
        { name: "/Home/Pregunta?idCategoria=5", startAngle: 193, endAngle: 245 }, //entretenimiento
        { name: "/Home/Pregunta?idCategoria=2", startAngle: 245, endAngle: 295}, //artes
        { name: "/Home/Pregunta?idCategoria=4", startAngle: 295, endAngle: 347 }, //deportes
        { name: "/Home/Pregunta?idCategoria=1", startAngle: 347, endAngle: 360 }, //historia
        { name: "/Home/Pregunta?idCategoria=1", startAngle: 0, endAngle: 37 } //historia
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

    // Remover el event listener para evitar clics adicionales
    button.removeEventListener('click', handleClick);
}
