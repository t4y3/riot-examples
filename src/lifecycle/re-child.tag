<re-child onclick="{ clickHandler }">
  <p>click</p>

  <style scoped>
    :scope {
      display: block;
      padding: 10px;
      margin: 10px;
      background-color: #fff;
      border-radius: 4px;
      cursor: pointer;
    }
  </style>

  <script>
    const style = 'color: #04f; font-size: 1rem;';

    this.on('updated', (e) => {
      console.log(`%c子タグのupdated: ${ opts.tagId }`, style);
    });

    this.clickHandler = () => {
      // イベントハンドラが呼ばれるとテンプレートが更新されます
    };
  </script>

</re-child>