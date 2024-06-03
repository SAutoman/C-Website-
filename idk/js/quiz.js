function submitQuiz() {
    var correctAnswers = {
        q1: 'option3', // Earth's Core
        q2: 'option2', // Au
        q3: ['option2'], // Reflectivity and Aluminum Oxide
        q4: 'option3', // High Thermal and Electrical Conductivity
        q5: ['option3'], // Bronze Age
        q6: 'option1' // Copper
    };

    var score = 0;

    for (var qNum = 1; qNum <= 6; qNum++) {
        var question = 'q' + qNum;
        var selectedAnswer = document.querySelector('input[name="' + question + '"]:checked');

        if (selectedAnswer) {
            if (Array.isArray(correctAnswers[question])) {
                if (correctAnswers[question].includes(selectedAnswer.value)) {
                    score += 10;
                    document.getElementById(question + 'Result').innerHTML = '<span class="correct">Correct</span>';
                } else {
                    document.getElementById(question + 'Result').innerHTML = '<span class="incorrect">Incorrect</span>';
                }
            } else {
                if (correctAnswers[question] === selectedAnswer.value) {
                    score += 20;
                    document.getElementById(question + 'Result').innerHTML = '<span class="correct">Correct</span>';
                } else {
                    document.getElementById(question + 'Result').innerHTML = '<span class="incorrect">Incorrect</span>';
                }
            }
        }
    }

    document.getElementById('score').innerText = 'Score: ' + score;
}