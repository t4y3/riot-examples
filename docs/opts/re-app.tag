<re-app>
  <h2>optsの内容を表示</h2>
  <h3>
      -区切りの形式で渡した場合は、キャメルケースに変換されます<br>
      例) camel-case -> camelCase
  </h3>

  <pre class="prettyprint">
// optsの中身を表示
{ JSON.stringify(opts, null, 4) }
  </pre>

  <style scoped>
    :scope {
      display: block;
      padding: 50px;
      border-radius: 4px;
    }

    h2, h3 {
      margin-bottom: 20px;
    }
  </style>

  <script>
    this.on('mount', () => {
      PR.prettyPrint();
    });
  </script>

</re-app>
