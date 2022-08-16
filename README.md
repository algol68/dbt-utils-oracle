# `dbt-utils-oracle`

Built in the image of exellent example -> [tsql-utils](https://github.com/dbt-msft/tsql-utils)

This [dbt](https://github.com/fishtown-analytics/dbt) package contains macros 
that extend use of dbt-utils to Oracle databases

## Compatibility

This package provides "shims" for:
- [dbt-utils](https://github.com/fishtown-analytics/dbt-utils) (partial)

## Usage

`{{dbt_utils.<ported-macro>(<arg>)}}` 


## Installation Instructions

1. Install dbt-utils
Add following to your packages.yaml file.
    ```yaml
    packages:
      - package: dbt-labs/dbt-utils 
        version: check [dbt hub](https://hub.getdbt.com/) for latest version

Check [dbt-utils](https://github.com/fishtown-analytics/dbt-utils) for latest installation instructions

2. Install `dbt-utils-oracle`
    ```yaml
    packages:
      - package: algol68/dbt_utils_oracle
        version: {SEE PROJECT HUB FOR NEWEST VERSION}
    ```
3. add dbt-utils-oracle as macro provider for dbt-utils
    ```yaml
    dispatch:
      - macro_namespace: dbt_utils
        search_order: ['dbt_oracle_utils', 'dbt_utils']
    ```

