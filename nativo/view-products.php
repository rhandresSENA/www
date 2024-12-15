<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
</head>
<body>
    <a href="/index.php?route=create">Add</a>
    <br><br>
    <table border="1" width="100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($products as $product) { ?>
            <tr>
                <td><?php echo $product['id']; ?></td>
                <td><?php echo $product['name']; ?></td>
                <td>
                    <form action="/index.php" method="POST">
                        <input type="hidden" name="route" value="delete">
                        <input type="hidden" name="id" value="<?php echo $product['id']; ?>">
                        <button onclick="confirm('Really delete ?')">Delete</button>
                    </form>
                </td>
            </tr>
            <?php }?>
        </tbody>
    </table>
</body>
</html>
