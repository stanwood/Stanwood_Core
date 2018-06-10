
# StanwoodCore framework

[![Swift Version](https://img.shields.io/badge/Swift-4.0.x-orange.svg)]()
[![iOS 9+](https://img.shields.io/badge/iOS-9+-EB7943.svg)]()

## Table of contents

- [Author](#author)
- [Installation](#installation)
- [Usage](#usage)
- [Licence](#licence)


## Author

Tal Zion tal.zion@stanwood.io

## Installation

```ruby
source 'git@github.com:CocoaPods/Specs.git'
source 'git@github.com:stanwood/Cocoa_Pods_Specs.git'

pod 'StanwoodCore'
```

```
$ pod update StanwoodCore
```

## Release Notes

### 0.2.3

- `Stanwood.Objects` has been renamed to `Stanwood.Elements` to follow Swift naming conventions.
- Adding `cellType(forItemAt:)` to `DataType` protocol to hanndle `cellForItem` in the abstract level.
- Adding `SourceTypePresentable` to support Stanwood Architecture 1.0
- Adding `UITestingCore` bridge for `StanwoodUITestingCore` framework

### 0.2.2

- Fixing `Loadable` non-static function

### 0.1.8

- Fixing number of rows in section, in `Stanwood.AbstractTableDataSource`

### 0.1.7

- Fixing `Loadable`
- Fixing UIView extention `addShadow` default values
- Removed duplciate extensions
- Adding `DataSourceType` & `DelegateSourceType` protocol to support DataSource and Delegate
- Adding `Presentable` protocol
- Chaning naming in `Stanwood.Objects`

## Usage

Check out the [full documentations](https://stanwood.github.io/Stanwood_Core).

## Licence

StanwoodCore is is under MIT licence. See the [LICENSE](https://github.com/stanwood/Stanwood_Core/blob/master/LICENSE) file for more info.
