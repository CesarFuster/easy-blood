import "bootstrap";
import swal from 'sweetalert';


document.getElementById("confirmMe").addEventListener("click", message);


function message() {
    swal("Obrigado pela confirmação!", "Seu gesto poderá salvar uma vida! Nos vemos em breve");
    document.getElementById("confirmMe").innerHTML = 'Presença confirmada';
    document.getElementById("confirmMe").removeEventListener('click', message);
}
