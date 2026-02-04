# aws-portfolio
# AWS Standard 3-tier Architecture (Terraform)

## 概要
本プロジェクトは、AWS上に可用性とセキュリティを考慮した標準的な3層ウェブアプリケーション基盤をTerraformで構築したものです。
手動操作を排除し、コードによるインフラ管理（IaC）を実現しています。

## 構成図
![Architecture Diagram](docs/architecture.png)
※構成図は別途作成し、docsフォルダにアップロード予定

## 主な使用技術
* **AWS:** VPC, ALB, EC2, RDS (MySQL), NAT Gateway, IAM
* **IaC:** Terraform v1.x
* **OS:** Amazon Linux 2023

## 設計のポイント
1. **高可用性（Multi-AZ）:** 2つのアベイラビリティゾーンを利用し、ALB、EC2、RDSを冗長化。単一障害点（SPOF）を排除した設計。
2. **セキュリティ（ネットワーク分離）:** アプリサーバーおよびデータベースをプライベートサブネットに配置し、インターネットからの直接アクセスを遮断。
3. **再現性:** 全リソースをTerraformで定義。環境の構築・削除を自動化し、人為的ミスを防止。

## 構築手順
1. `terraform init` : プロバイダーの初期化
2. `terraform plan` : 実行計画の確認
3. `terraform apply` : リソースの作成
