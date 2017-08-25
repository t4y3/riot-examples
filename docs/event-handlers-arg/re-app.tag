<re-app>
  <h2>イベントハンドラに引数を渡す</h2>

  <h3>data属性で渡す</h3>

  <span class="re-btn" data-arg="data属性から渡す" onclick={ clickHandlerA }>クリック</span>

  <h3>bindを使用</h3>

  <span class="re-btn" onclick={ clickHandlerB.bind(this, 'bindで渡す') }>クリック</span>

  <style scoped>
    :scope {
      display: block;
      padding: 50px;
      border-radius: 4px;
    }

    h2, h3 {
      margin-bottom: 20px;
    }

    .re-btn {
      display: inline-block;
      padding: 10px;
      margin-bottom: 20px;
      color: #fff;
      background-color: #408bc2;
      border-radius: 4px;
      cursor: pointer;
    }

    .re-btns .re-btns__btn:first-child {
      margin-left: 0;
    }
  </style>

  <script>
    this.clickHandlerA = (e) => {
      alert(e.currentTarget.dataset['arg']);
    };

    this.clickHandlerB = (arg) => {
      alert(arg);
    };
  </script>

</re-app>
