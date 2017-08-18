<!doctype html>
<html>

  <head>
    <title>Opts-PHP</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>
    <link rel="stylesheet" href="https://cdn.rawgit.com/google/code-prettify/master/styles/desert.css">
  </head>

  <body>

    <?
      // PHPの変数を定義
      $text = 'PHP変数を定義';
      $int = 12345;
      $array = array(1, 2, 3);
      $associative_array = array(
        'id' => 999,
        'messge' => 'PHP -> JS -> riot',
      );
    ?>

    <script type="text/javascript">
      var jsText = '<?= $text ?>';
      var jsInt = <?= $int ?>;
      var jsArray = <?= json_encode($array) ?>;
      var jsAssociativeArray = <?= json_encode($associative_array) ?>;
    </script>

    <app
      text="{ jsText }"
      int="{ jsInt }"
      array="{ jsArray }"
      associative-array="{ jsAssociativeArray }">
    </app>

    <!-- riot tags -->
    <script type="riot/tag" src="app.tag"></script>

    <!-- scripts we need -->
    <script src="https://rawgit.com/riot/riot/master/riot%2Bcompiler.min.js"></script>

    <!-- mount this app -->
    <script>
      riot.compile(function() {
        riot.mount('*')
      })
    </script>

  </body>

</html>