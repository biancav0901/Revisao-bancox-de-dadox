// Exemplo de dados para a nota fiscal
document.getElementById('data-emissao').textContent = new Date().toLocaleDateString();
document.getElementById('numero').textContent = '0001';
document.getElementById('nome-empresa').textContent = 'RenovaCycli';
document.getElementById('cnpj-empresa').textContent = '12.345.678/0001-90';
document.getElementById('endereco-empresa').textContent = 'Rua laranja, 123 - Cidade - Estado';

document.getElementById('nome-cliente').textContent = 'Cliente Bianca';
document.getElementById('cpf-cnpj-cliente').textContent = '123.456.789-00';
document.getElementById('endereco-cliente').textContent = 'Avenida 121, 456 - Cidade - Estado';

// Exemplo de itens
const itens = [
    { descricao: 'Produto 1', quantidade: 2, valorUnitario: 50 },
    { descricao: 'Produto 2', quantidade: 1, valorUnitario: 100 },
];

let total = 0;
const tabelaItens = document.getElementById('tabela-itens').getElementsByTagName('tbody')[0];

itens.forEach(item => {
    const subtotal = item.quantidade * item.valorUnitario;
    total += subtotal;
    const row = tabelaItens.insertRow();
    row.innerHTML = `
        <td>${item.descricao}</td>
        <td>${item.quantidade}</td>
        <td>R$ ${item.valorUnitario.toFixed(2)}</td>
        <td>R$ ${subtotal.toFixed(2)}</td>
    `;
});

document.getElementById('total').textContent = `R$ ${total.toFixed(2)}`;
