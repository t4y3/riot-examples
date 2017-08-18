<app>
  <p>
    注意点<br>
    xxx-yyyの形式で渡した場合は、キャメルケースに変換される<br>
    例) camel-case -> camelCase
  </p>

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
  </style>

  <script>
    this.on('mount', () => {
        PR.prettyPrint();
    });
  </script>

</app>