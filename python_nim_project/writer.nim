import nimpy

# テキストファイル
const HOGE_TEXT = "./hoge.txt"

# テキストファイル書き込み
proc write_text(record: string): string {.exportpy.} =
  var f : File = open(HOGE_TEXT, FileMode.fmAppend)
  f.writeLine record
  defer :
    close(f)
