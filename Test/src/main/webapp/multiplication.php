<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tables de Multiplication</title>
    <style>
        table {
            border-collapse: collapse;
            margin: 20px 0;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>

    <h1>Tables de Multiplication de 1 à 5</h1>

    <table>
        <tr>
            <?php
            // Afficher les entêtes de colonnes (1 à 5)
            for ($i = 1; $i <= 5; $i++) {
                echo "<th>$i</th>";
            }
            ?>
        </tr>

        <?php
        // Afficher les lignes des tables de multiplication
        for ($i = 1; $i <= 10; $i++) {
            echo "<tr>";
            for ($j = 1; $j <= 5; $j++) {
                echo "<td>" . ($j * $i) . "</td>";
            }
            echo "</tr>";
        }
        ?>
    </table>

</body>
</html>
