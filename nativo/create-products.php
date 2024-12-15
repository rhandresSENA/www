<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create product</title>
</head>
<body>
    <h1>Create product</h1>
    <br>
    <form action="/index.php" method="POST">

        <input type="hidden" name="route" value="store">
        <input type="text" name="name" placeholder="Name of product">
        <button type="submit">Create</button>
        <button type="reset">Clear</button>
    </form>
</body>
</html>