let display = document.getElementById('display');
let currentInput = '';
function appendValue(value) {
    currentInput += value;
    display.value = currentInput;
}
function clearDisplay() {
    currentInput = '';
    display.value = '';
}
function calculate() {
    try {
        currentInput = eval(currentInput).toString();
        display.value = currentInput;
    } catch (error) {
        display.value = 'Error';
    }
}``
app.listen(8080);
console.log("Running on port 8080");
