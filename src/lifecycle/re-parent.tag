<re-parent>
  <h2>コンソールを確認</h2>
  <h3>updateは子タグに伝播するため、updatedイベントはめっちゃ走るので、注意</h3>
  <div class="btns">
    <div class="btns__btn" onclick="{ clickHandler }">
      Click（親をupdate）
    </div>
  </div>

  <div class="child-wrap">
    <re-child each="{ i in tagCount }" tag-id="{ i }"></re-child>
  </div>

  <style scoped>
    :scope {
      display: block;
      padding: 50px;
      background-color: #efefef;
      border-radius: 4px;
    }

    h2, h3 {
      margin-bottom: 20px;
    }

    .btns {
      display: flex;
      margin-bottom: 40px;
    }

    .btns__btn {
      display: inline-block;
      padding: 10px;
      background-color: #f04;
      border-radius: 4px;
      color: #fff;
      cursor: pointer;
    }

    .child-wrap {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
    }
  </style>

  <script>
    // 黒魔術なので無視(0-99の配列を作成)
    this.tagCount = Array.from(Array(100), (v, k) => k);

    this.clickHandler = () => {
      // イベントハンドラが呼ばれるとテンプレートが更新されます
    };
  </script>

</re-parent>