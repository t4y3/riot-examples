<re-app>
  <h2>エスケープしないでHTMLを出力する</h2>

  <h3>基本的にはエスケープされます</h3>

  <pre class="prettyprint">
  { imgTag }
  </pre>



  <h3>this.root.innerHTMLに入れるとエスケープされない</h3>

  <re-raw content="{ imgTag }"></re-raw>



  <style scoped>
    :scope {
      display: block;
      padding: 50px;
      border-radius: 4px;
    }

    h2, h3 {
      margin: 20px 0;
    }
  </style>

  <script>
    this.imgTag = "<img src='https://unsplash.it/200/300' alt='dummy'>";
    this.on('mount', () => {
      PR.prettyPrint();
    });
  </script>

</re-app>
