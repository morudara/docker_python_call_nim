# docker_python_call_nim
 - docker-compose, Docker, Python, choosenim, nimble, nimpy

## 実行方法

```
# 起動
$ docker-compose up --build -d

$ dc ps
       Name          Command   State           Ports
-------------------------------------------------------------
python_nim_project   python3   Up      0.0.0.0:8050->8000/tcp

# コンテナ接続
$ docker-compose exec python_nim_project bash

# コンテナ内でNimコンパイル
$ nim c --threads:on --app:lib --out:writer.so writer

# execから抜けるとき
$ exit

# コード実行
$ docker-compose run --rm python_nim_project python main.py


# 落とすとき(イメージも削除)
$ docker-compose down --rmi all
```

### 備考
 - requirements.txtは適当なライブラリ書いてあるけど、実行には不要
