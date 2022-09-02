
<!-- jQuery library -->
<script src="js/jquery.min.js"></script>

<!-- jsPDF library -->
<script src="js/jsPDF/dist/jspdf.min.js"></script>

var doc = new jsPDF();

doc.text(20, 20, 'Hola mundo');
doc.text(20, 30, 'Vamos a generar un pdf desde el lado del cliente');

// Add new page
doc.addPage();
doc.text(20, 20, 'Visita programacion.net');

// Save the PDF
doc.save('documento.pdf');