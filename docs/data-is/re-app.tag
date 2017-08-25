<re-app>
  <h2>data-isでタグを動的に出しわけ</h2>

  <div class="re-btns">
    <span class="re-btns__btn" onclick="{ clickHandlerA }">re-a.tag</span>
    <span class="re-btns__btn" onclick="{ clickHandlerB }">re-b.tag</span>
    <span class="re-btns__btn" onclick="{ clickHandlerC }">re-c.tag</span>
  </div>

  <div data-is="{ currentTag }"></div>

  <style scoped>
    :scope {
      display: block;
      padding: 50px;
      border-radius: 4px;
    }

    h2, h3 {
      margin-bottom: 20px;
    }

    .re-btns {
      display: flex;
      margin-bottom: 20px;
    }

    .re-btns .re-btns__btn {
      padding: 10px;
      margin-left: 20px;
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
    this.currentTag = 're-a';
    this.clickHandlerA = () => { this.currentTag = 're-a'; };
    this.clickHandlerB = () => { this.currentTag = 're-b'; };
    this.clickHandlerC = () => { this.currentTag = 're-c'; };
  </script>

</re-app>
