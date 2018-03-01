# Faker::Buront




## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faker-buront'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faker-buront

## Usage

There is two element `title` and `body`.

You can get Buront's saying with oneline.

```console
> Faker::Buront.saying(:rage)
=> "お前らは一級廃人のおれの足元にも及ばない貧弱一般人その一般人どもが一級廃人のおれに対してナメタ言葉を使うことでおれの怒りが有頂天になったこの怒りはしばらくおさまる事を知らない"
```

or part of saying

```console
> Faker::Buront.part_of_saying(:rage)
=> "お前らは一級廃人のおれの足元にも及ばない貧弱一般人"
```

or title

```console
> Faker::Buront.saying_title(:rage)
=> "俺の怒りが有頂天"
```

You can get above with random

```console
> Faker::Buront.random_saying
=> "ナイトはスキルも性格もいいのでＬＳメンバーからは良くたよりにされるだがたよりにされたいからナイトを上げてもダメだと言う事が最近わかったナイトを上げるのは真にナイトの人だからナイトを上げたくてあげるんじゃない上がってしまう者がナイト忍者はざんねんがはっきりいってスキルはつかわないし性格も裏テルとかイマイチだから信頼されにくい"
> Faker::Buront.random_part_of_saying
=> "ナイトは忍者よりも高みにいるからお前らのイタズラにも笑顔だったがいい加減にしろよ"
> Faker::Buront.random_saying_title
=> "裏世界でひっそり幕を閉じる"
```

You can get whole saying object that constracted with title and body.

```apple js
> Faker::Buront.whole_saying(:ls_reliability)
=> #<Faker::Buront::Saying:0x00007f9f620794b0 @title="ナイトと忍者のＬＳ信頼度は違いすぎた", @body="やはり忍者よりナイトの方が頼りにされていた\nキングベヒーもスとの戦いでおれは集合時間に遅れてしまったんだがちょうどわきはじめたみたいでなんとか耐えているみたいだった\nおれはジュノにいたので急いだ\nところがアワレにも忍者がくずれそうになっているっぽいのがＬＳ会話で叫んでいた\nどうやら忍者がたよりないらしく「はやくきて～はやくきて～」と泣き叫んでいるＬＳメンバーのために俺はとんずらを使って普通ならまだ付かない時間できょうきょ参戦すると\n「もうついたのか！」「はやい！」「きた！盾きた！」「メイン盾きた！」「これで勝つる！」と大歓迎状態だった\n忍者はアワレにも盾の役目を果たせず死んでいた\n近くですばやくフラッシュを使い盾をした\n忍者から裏テルで「勝ったと思うなよ・・・」ときたがＬＳメンバーがどっちの見方だかは一瞬でわからないみたいだった\n「もう勝負ついてるから」というと黙ったので戦士サポ忍の後ろに回り不意だまスフィストを打つと何回かしてたらキングベヒんもスは倒された\n「ナイトのおかげだ」「助かった、終わったと思ったよ」と忍者を行き帰らせるのも忘れてメンバーがおれのまわりに集まってきた忘れられてる忍者がかわいそうだった\n普通なら裏テルのことで無視する人がぜいいんだろうがおれは無視できなかった\nみんなとよｒこびほめられたかったのでレイズを唱えてやったらそうとう自分の裏テルが恥ずかしかったのかＨＰに帰って行った">
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/colorbox/faker-buront. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Faker::Buront project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/faker-buront/blob/master/CODE_OF_CONDUCT.md).
