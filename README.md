# hubot-gyotaku

[![Greenkeeper badge](https://badges.greenkeeper.io/moqada/hubot-gyotaku.svg)](https://greenkeeper.io/)

[![NPM version][npm-image]][npm-url]
[![NPM downloads][npm-download-image]][npm-download-url]
[![Build Status][travis-image]][travis-url]
[![Dependency Status][daviddm-image]][daviddm-url]
[![DevDependency Status][daviddm-dev-image]][daviddm-dev-url]
[![License][license-image]][license-url]

Handling Web GYOTAKU ([ウェブ魚拓](http://megalodon.jp)) for Hubot

## Installation

```
npm install hubot-gyotaku --save
```

Then add **hubot-gyotaku** to your `external-scripts.json`:

```json
["hubot-gyotaku"]
```

## Sample Interaction

```
me> hubot gyotaku http://example.com
hubot> http://megalodon.jp/2015-1122-0046-00/example.com/
me> hubot gyotaku list http://example.com
hubot> http://megalodon.jp/2015-0314-2316-35/example.com/
http://megalodon.jp/2015-0730-1459-39/example.com/
http://megalodon.jp/2015-1024-1059-02/example.com/
http://megalodon.jp/2015-1024-1107-16/example.com/
http://megalodon.jp/2015-1120-0501-24/example.com/
http://megalodon.jp/2015-1120-0501-34/example.com/
http://megalodon.jp/2015-1121-0014-27/example.com/
http://megalodon.jp/2015-1122-0046-00/example.com/
```

## Commands

```
hubot gyotaku <URL> - Create new GYOTAKU.
hubot gyotaku [take|new] <URL> - Create new GYOTAKU.
hubot gyotaku [list|ls] <URL> - List GYOTAKU for URL.
```

## Configurations

```
HUBOT_GYOTAKU_TAKE_ERROR_MESSAGE - Set message for error when take GYOTAKU
HUBOT_GYOTAKU_LIST_ERROR_MESSAGE - Set message for error when list GYOTAKU
HUBOT_GYOTAKU_LIST_ZERO_MESSAGE - Set message for zero urls when list GYOTAKU
```


[npm-url]: https://www.npmjs.com/package/hubot-gyotaku
[npm-image]: https://img.shields.io/npm/v/hubot-gyotaku.svg?style=flat-square
[npm-download-url]: https://www.npmjs.com/package/hubot-gyotaku
[npm-download-image]: https://img.shields.io/npm/dt/hubot-gyotaku.svg?style=flat-square
[travis-url]: https://travis-ci.org/moqada/hubot-gyotaku
[travis-image]: https://img.shields.io/travis/moqada/hubot-gyotaku.svg?style=flat-square
[daviddm-url]: https://david-dm.org/moqada/hubot-gyotaku
[daviddm-image]: https://img.shields.io/david/moqada/hubot-gyotaku.svg?style=flat-square
[daviddm-dev-url]: https://david-dm.org/moqada/hubot-gyotaku#info=devDependencies
[daviddm-dev-image]: https://img.shields.io/david/dev/moqada/hubot-gyotaku.svg?style=flat-square
[license-url]: http://opensource.org/licenses/MIT
[license-image]: https://img.shields.io/npm/l/hubot-gyotaku.svg?style=flat-square
