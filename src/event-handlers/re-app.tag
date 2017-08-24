<re-app>
  <h2>ループ時のe.itemの使用方法</h2>

  <h3>Click!</h3>

  <virtual each="{ item, i in data }">
      <span class="re-btn" onclick={ clickHandler }>{ item.name }</span>
  </virtual>


  <h3>click時の`e.item`の内容を表示</h3>
  <h4>e.item.itemでループ時の現在の要素にアクセス</h4>
  <h4>e.item.iでループ時のインデックスにアクセス</h4>
  <pre ref="code" class="prettyprint" if="{ clickData }">
{ JSON.stringify(clickData, null, 4) }
  </pre>

  <style scoped>
    :scope {
      display: block;
      padding: 50px;
      border-radius: 4px;
    }

    h2, h3 {
      margin: 20px 0;
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
    this.clickData = null;
    this.data = [
      { name: '川口', position: 'GK', age: 30 },
      { name: '田中', position: 'DF', age: 30 },
      { name: '中田', position: 'MF', age: 30 },
      { name: '高原', position: 'FW', age: 30 },
    ];

    this.clickHandler = (e) => {
      this.clickData = null;
      setTimeout(() => {
        // this.refs.code.classList.add('prettyprinted');
        this.clickData = e.item;
        this.update();
        PR.prettyPrint();
      }, 0);
    };

    this.on('mount', () => {
      PR.prettyPrint();
    });
  </script>

</re-app>
