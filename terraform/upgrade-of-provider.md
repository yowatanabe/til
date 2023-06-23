# upgrade-of-provider

AWSのproviderをバージョンアップした時のメモ


1. 定義しているバージョンを書き換える

    ```diff_*
    terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
      - version = "~> 3.0"
      + version = "~> 5.4.0"
        }
      }
    }
    ```

2. `terraform init --upgrade`を実行

    ```
    $ terraform init --upgrade

    Initializing the backend...

    Initializing provider plugins...
    - Finding hashicorp/aws versions matching "~> 5.4.0"...
    - Installing hashicorp/aws v5.4.0...
    - Installed hashicorp/aws v5.4.0 (signed by HashiCorp)

    Terraform has made some changes to the provider dependency selections recorded
    in the .terraform.lock.hcl file. Review those changes and commit them to your
    version control system if they represent changes you intended to make.

    Terraform has been successfully initialized!

    You may now begin working with Terraform. Try running "terraform plan" to see
    any changes that are required for your infrastructure. All Terraform commands
    should now work.

    If you ever set or change modules or backend configuration for Terraform,
    rerun this command to reinitialize your working directory. If you forget, other
    commands will detect it and remind you to do so if necessary.
    ```

3. `.terraform.lock.hcl`が更新されるのでGitHubなどでバージョン管理している場合はcommit/pushする
