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

# コンテナ内でNimコンパイル
$ docker-compose exec python_nim_project nim c --threads:on --app:lib --out:writer.so writer

# コード実行
$ docker-compose run --rm python_nim_project python main.py

# コンテナ接続
$ docker-compose exec python_nim_project bash

# execから抜けるとき
$ exit

# 落とすとき(イメージも削除)
$ docker-compose down --rmi all
```

### 備考
 - requirements.txtは適当なライブラリ書いてあるけど、実行には不要
