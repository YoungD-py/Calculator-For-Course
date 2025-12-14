document.getElementById('interest-form').addEventListener('submit', function(event) {
    event.preventDefault();

    const principal = parseFloat(document.getElementById('principal').value);
    const rate = parseFloat(document.getElementById('rate').value);
    const time = parseFloat(document.getElementById('time').value);

    if (isNaN(principal) || isNaN(rate) || isNaN(time) || principal <= 0 || rate <= 0 || time <= 0) {
        document.getElementById('result').innerHTML = 'Masukkan nilai yang valid dan lebih besar dari nol.';
        return;
    }

    const r = rate / 100; // Konversi rate dari persentase ke desimal
    const interest = principal * r * time;
    const total = principal + interest;

    const formattedInterest = interest.toLocaleString('id-ID', { style: 'currency', currency: 'IDR' });
    const formattedTotal = total.toLocaleString('id-ID', { style: 'currency', currency: 'IDR' });

    document.getElementById('result').innerHTML = `
        <p>Bunga yang Dihasilkan: ${formattedInterest}</p>
        <p>Jumlah Total yang Harus Dibayar: ${formattedTotal}</p>
    `;
});