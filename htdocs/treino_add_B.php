<?php
include 'conexao.php';

$id_aluno = $_GET['id_aluno'];

$sql_check = "SELECT id_aluno FROM aluno WHERE id_aluno = '$id_aluno'";
$result_check = $conn->query($sql_check);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pitty - Inserir Treino</title>
    <style>
        body {
            background-color: orangered;
            color: black;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 20px;
        }

        .container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 600px;
            text-align: center;
        }

        h1 {
            color: black;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            margin: 15px 0;
        }

        a {
            text-decoration: none;
            margin-top: 20px;
            display: inline-block;
        }

        button {
            background-color: orangered;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #cc0000;
        }

        @media (max-width: 600px) {
            button {
                font-size: 14px;
                padding: 8px 16px;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <?php
    if ($result_check->num_rows == 0) {
        echo "<h1>Erro</h1>";
        echo "<p>O ID do aluno não existe na tabela de alunos!</p>";
        echo "<a href='GERENCIA_ALUN_INSTRU.php?id_aluno=999'><button type='button'>VOLTAR</button></a>";
    } else {
        $sql = "INSERT INTO treinos (id_aluno, id_exercicio, series, repeticoes, ordem, classe_treino) VALUES
        ('$id_aluno', 1, '3', '10', 1, 'A'),
        ('$id_aluno', 8, '3', '10', 2, 'A'),
        ('$id_aluno', 6, '3', '10', 3, 'A'),
        ('$id_aluno', 15, '4', '10', 4, 'A'),
        ('$id_aluno', 165, '4', '10', 5, 'A'),
        ('$id_aluno', 13, '4', '10', 6, 'A'),
        ('$id_aluno', 40, '4', '10', 7, 'A'),
        ('$id_aluno', 47, '4', '10/15Min', 0, 'A'),
        ('$id_aluno', 21, '4', '4', 1, 'F'),
        ('$id_aluno', 20, '5', '20', 2, 'F'),
        ('$id_aluno', 166, '4', '8', 3, 'F'),
        ('$id_aluno', 167, '4', '15', 4, 'F'),
        ('$id_aluno', 168, '4', '15', 5, 'F'),
        ('$id_aluno', 169, '3', '1min', 6, 'F'),
        ('$id_aluno', 30, '4', '20', 7, 'F'),
        ('$id_aluno', 170, '4', '10', 8, 'F'),
        ('$id_aluno', 171, '4', '10-lento', 8, 'F'),
        ('$id_aluno', 47, '4', '10/15Min', 0, 'F'),
        ('$id_aluno', 66, '4', '10', 1, 'B'),
        ('$id_aluno', 172, '3', '10', 2, 'B'),
        ('$id_aluno', 173, '3', '10', 3, 'B'),
        ('$id_aluno', 174, '4', '10', 4, 'B'),
        ('$id_aluno', 33, '4', '10', 5, 'B'),
        ('$id_aluno', 175, '4', '10', 6, 'B'),
        ('$id_aluno', 38, '4', '10', 7, 'B'),
        ('$id_aluno', 47, '-', '10/15Min', 0, 'B'),
        ('$id_aluno', 78, '-', '-', 1, 'S'),
        ('$id_aluno', 60, '-', '-', 2, 'S'),
        ('$id_aluno', 40, '4', '20', 2, 'S'),
        ('$id_aluno', 42, '4', '20', 2, 'S'),
        ('$id_aluno', 41, '4', '20', 2, 'S'),
        ('$id_aluno', 47, '-', '10/15Min', 0, 'S');";

        if ($conn->query($sql) === TRUE) {
            echo "<h1>Sucesso</h1>";
            echo "<p>Treino adicionado com sucesso!</p>";
        } else {
            echo "<h1>Erro</h1>";
            echo "<p>Erro ao adicionar treino: " . $conn->error . "</p>";
        }
        echo "<a href='GERENCIA_ALUN_INSTRU.php?id_aluno=999'><button type='button'>VOLTAR MENU</button></a>";
    }
    $conn->close();
    ?>
</div>

</body>
</html>
