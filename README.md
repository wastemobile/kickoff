## Keep some kickoff templates, all have to work with CodeKit.

## Compass

`config.rb` 是提供給可用 Compass 安裝的套件使用。當然預先必須使用 `gem` 安裝相關套件，最基本的只要 `gem install susy` ，就會一併把 sass、compass 各相依套件一併裝完。

* sass
* compass
* susy
* zurb-foundation
* bootstrap-sass(not yet 3.0)
* pure-sass
* sassy-buttons
* zocial

## 建立專案的步驟（全新）

1. `compass create <project-name> -r zurb-foundation --using foundation`
2. `compass create <project-name> -r susy -u susy`
3. `compass create <project-name> -r bootstrap-sass --using bootstrap`

## 使用已存在的專案（加入或升級）

1. `compass install foundation` or `compass install foundation --force`
2. `compass install susy` or `compass install susy --force`
3. `compass install bootstrap` or `compass install bootstrap --force`

## 升級注意事項

若在 `config.rb` 只使用 `require`，都是會使用 gem 安裝的最新版，若尚未要升級到新版，就必須在 `config.rb` 中指定：

	gem "foundation", "=4.1.3"
	require "zurb-foundation"

ps.要記得 gem 中不能移除掉舊的版本，否則會報錯。必要時使用 `gem install <gem-name> --version "= 3.2.4"` 重新裝回舊版（但有時好像會找不到舊版呢，悲情...XD）

## 自動安裝參考用倉儲

1. 先確認已經啓用 Git 倉儲。（`git init` -> `git add .` -> `git commit -m "Initial"`）
2. 確認 `install.sh` 可以執行。（`chmod +x install.sh`）
3. 執行 `install.sh`，會自動根據 `vendor.csv` 檔案中的倉儲位置，以 Git Submodule 模式安裝各種參考用資料，這些倉儲由於可能常常變動、升級，建議最好不要直接修改。
4. 修改、添加 `vendor.csv` 後，直接再次執行 `install.sh` 即可。