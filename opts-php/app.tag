<app>
  <h2>PHP変数をoptsで渡す</h2>

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