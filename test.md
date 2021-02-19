| 命令               | 说明                      | 备注 |
| ------------------ | ------------------------- | ---- |
| command + d        | ff                        |      |
| command+ shift + v | 打开 markdown 预览        |      |
| command+ shift + v | 打开 markdown 预览        |      |
| command+ shift + v | 打开 markdown 预览        |      |
| command+ shift + v | 打开 marsdsakdo wn 预览   |      |
| command+ shift + v | 打开 marsdsakdown 预览    |      |
| command+ shift + v | 打开 marsdsakdown 预览    |      |
| command+ shift + v | 打开 marsdsakdo wn 预览   |      |
| command+ shift + v | 打开 marsdfsdsakdown 预览 |      |
| command+ shift + v | 打开 marsdsakdo wn 预览   |      |
| command+ shift + v | 打开 marsdsakdown 预览    |      |
| command+ shift + v | 打开 sda 预览             |      |
| command+ shift + v | 打开 marsdsakdown 预览    | fdg  |
| command+ shift + v | 打开 marsdsakdown 预览    |      |
| command+ shift + v | 打开 m 预览               |      |
| command+ shift + v | 打开 markdown 预览        |      |

|     |     |     |     |     |     |
| --- | --- | --- | --- | --- | --- |
|     |     |     |     | 1   |     |
|     |     |     |     |     |     |
|     |     |      |     | 2   |     |
|     |     |        |     | 3   |     |
|     |     |     |     |     |     |
|     |     |     |     | 5   |     |
|     |     |     |     |     |     |
|     |     |     |     |     |     |
|     |     |     |     |     |     |
|     |     |     |     |     |     |


// Orignal code
var abc = {
  hello:      1
  ,my :2//comment
  ,friend:   3      // comment
}

// "colon": [0, 1]
// "comment": 2
var abc = {
    hello : 1
  , my    : 2  // comment
  , friend: 3  // comment
}

// "colon": [1, 2]
// "comment": 4
var abc = {
    hello  :  1
  , my     :  2    // comment
  , friend :  3    // comment
}

// "colon": [-1, 3]
// "comment": 2
var abc = {
    hello:    1
  , my:       2  // comment
  , friend:   3  // comment
}

// "colon": [-1, -1]
// "comment": 2
var abc = {
     hello:1
  ,     my:2  //comment
  , friend:3  // comment
}


// Orignal code
$data = array(
    'text' => 'something',
    'here is another' => 'sample'
);

// "arrow": [1, 3]
$data = array(
    'text'            =>   'something',
    'here is another' =>   'sample'
);

{ "key": "ctrl+cmd+=",  "command": "wwm.aligncode",
                        "when": "editorTextFocus && !editorReadonly" }