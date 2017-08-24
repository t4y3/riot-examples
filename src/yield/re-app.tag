<re-app>
  <h2>yiledでHTMLの入れ子を行う</h2>

  <div class="re-btns">
    <span class="re-btns__btn" onclick="{ clickHandlerA }">Aを表示</span>
    <span class="re-btns__btn" onclick="{ clickHandlerB }">Bを表示</span>
    <span class="re-btns__btn" onclick="{ clickHandlerC }">Cを表示</span>
  </div>

  <re-modal if="{ modalType == 'a' }">
    <yield to="re-header">
      ログイン
    </yield>
    <yield to="re-body">
      ログインしますか？ログインしますか？ログインしますか？ログインしますか？ログインしますか？
      ログインしますか？ログインしますか？ログインしますか？ログインしますか？ログインしますか？
      ログインしますか？ログインしますか？ログインしますか？ログインしますか？ログインしますか？
    </yield>
  </re-modal>

  <re-modal if="{ modalType == 'b' }">
    <yield to="re-header">
      会員登録
    </yield>
    <yield to="re-body">
      会員登録すると...会員登録すると...会員登録すると...会員登録すると...会員登録すると...
      会員登録すると...会員登録すると...会員登録すると...会員登録すると...会員登録すると...
      会員登録すると...会員登録すると...会員登録すると...会員登録すると...会員登録すると...
    </yield>
  </re-modal>

  <re-modal if="{ modalType == 'c' }">
    <yield to="re-header">
      from="re-header"に入ります
    </yield>
    <yield to="re-body">
      from="re-body"に入りますfrom="re-body"に入りますfrom="re-body"に入ります
      from="re-body"に入りますfrom="re-body"に入りますfrom="re-body"に入ります
      from="re-body"に入りますfrom="re-body"に入りますfrom="re-body"に入ります
    </yield>
  </re-modal>

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
    this.clickHandlerA = () => { this.modalType = 'a'; };
    this.clickHandlerB = () => { this.modalType = 'b'; };
    this.clickHandlerC = () => { this.modalType = 'c'; };
  </script>

</re-app>
