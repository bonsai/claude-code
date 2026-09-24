# 作業仮説: Agent の界面（Interface）

- ステータス: 作業仮説（working hypothesis）
- 日付: 2026-09-17
- 対象: エージェント運用の定義モデル（`coding-agents.yaml` の理論的枠組み）

## 仮説

Agent の本当の「界面」は UI ではなく、**定義（Definition）と実行（Runtime）の境界**にある。

その上に「思考型」、横に「環境」、下流に「実装変換」を差し込むことで、
Agent を単なる Persona や Tool wrapper ではなく、**問いを受け、世界を認識し、考え、
実装し、環境へ作用する存在**として定義できる。

## 界面の構造

```
                    思考型（Thinking Type）
                          │
   Definition ────────────┼──────────── Runtime
                          │
                    実装変換（Implementation Transformation）
                          │
                    環境（Environment）
```

- **Definition**: エージェント自身の定義（役割・モデル・挙動の宣言）
- **Runtime**: 実行時の実体（プロセス・コンテキスト・外部作用）
- **思考型**: Definition の上に乗る、推論スタイルの指定
- **環境**: 界面の横に置く、認識と作用の対象
- **実装変換**: 下流で定義から実装への変換（計画 → コード変換）

## 帰結

Agent = 実行可能な界面（Definition/Runtime 境界）を持つ、問い→認識→思考→実装→作用の
ループを回す存在。UI や Persona は界面の一部ではなく、境界を覆う表現にすぎない。