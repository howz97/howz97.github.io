#show heading: set text(font: "Linux Biolinum")

#show link: underline

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
#set text(
  size: 12pt,
)

// Feel free to change the margin below to best fit your own CV
#set page(
  margin: (x: 0.9cm, y: 1.3cm),
)

// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#set par(justify: true)

#let chiline() = {v(-3pt); line(length: 100%); v(-5pt)}

= 张豪

zhanghao997\@qq.com |
#link("https://github.com/howz97")[github.com/howz97] | #link("https://www.yuque.com/ha0zhang")[yuque]

== 技能
#chiline()

编程语言: C++, Rust, Golang \
技能: 算法, Raft, 数据库  \

== 教育背景
#chiline()

#link("https://net.ncepu.edu.cn/")[*华北电力大学*] #h(1fr) 2016/09 -- 2020/07 \
本科 软件工程 #h(1fr) 保定 \

== 工作经历
#chiline()

#link("https://www.eloqdata.com/")[*EloqData*] #h(1fr) 2022/11 至今 \
软件开发 #h(1fr) 北京 \
- [C++] 开发用于 #link("https://www.eloqdata.com/eloqsql/introduction")[EloqSQL] 与 EloqKV 的底层KV存储引擎 *EloqStore*。 EloqStore 采用 COW B+Tree 结构存储数据以实现低延迟的读与高效的批量写, 组合 io_uring 与 coroutines 以充分利用 NVMe SSD
- [C++] 开发 #link("https://www.eloqdata.com/docs/monosql-mysql-diff")[*MonoSQL*]. MonoSQL 是 MariaDB 与 DynamoDB 的无状态中间层，将 DynamoDB 封装为 MariaDB 的存储引擎。
- [C++] 开发CDC工具. 用于从 EloqSQL 到其他分析系统(OLAP/Kafka)的增量复制
- [C++] 为EloqSQL开发高效数据导入工具，跳过SQL层逻辑，直接向KV层写入
- [Rust] 开发用于EloqSQL与EloqKV的数据库集群管理工具 #link("https://www.eloqdata.com/downloadeloqctl")[*eloqctl*]，实现快速部署与控制
- [Golang] #link("https://github.com/monographdb/tidb")[github.com/monographdb/tidb] 二次开发 TiDB-DM 以支持向EloqSQL导入数据
- [Golang] #link("https://github.com/monographdb/codis")[github.com/monographdb/codis] 二次开发 *Codis* 以兼容 EloqKV
- [Golang] #link("https://github.com/monographdb/juicefs")[github.com/monographdb/juicefs] 二次开发 *JuiceFS* 以支持 EloqKV 作为元数据存储引擎
- [Shell] 基于 Concourse 实现 EloqSQL 与 EloqKV 的CI流程

#link("https://www.tap4fun.com/")[*Tap4fun*] #h(1fr) 2020/07 -- 2021/12 \
Golang游戏服务器开发 #h(1fr) 成都 \
参与 "Age of Apes" 和 "Invasion" 两款游戏的服务器开发

== 自学网课
#chiline()

*TinyKV* #link("https://github.com/howz97/tinykv")[github.com/howz97/tinykv] \
模仿TiKV架构的教学版KV存储引擎， 数据分片后写入多个raft group。 支持不停机集群扩展。 事物基于MVCC 具有snapshot isolation隔离级别. 

*MIT6.824* #link("https://github.com/howz97/mit6.824")[github.com/howz97/mit6.824] (private repo) \
实验也是实现分布式可扩展KV存储，但是在扩展过程中无法访问被迁移的shard。

*CMU15-445* #link("https://github.com/howz97/bustub")[github.com/howz97/bustub] \
实验是为关系型数据库实现功能

*CMU15-721* #link("https://github.com/howz97/postgres/tree/2023-S721-P1")[github.com/howz97/postgres/tree/2023-S721-P1] \
实验是为PostgreSQL实现foreign data wrapper以支持 columnar storage

*ToyOS* #link("https://github.com/howz97/toyos")[github.com/howz97/toyos] \
跟随 #link("https://os.phil-opp.com/")["Writing an OS in Rust"] 系列博客教学用Rust实现一个玩具级操作系统

== 个人项目
#chiline()

*Golang算法库* #link("https://github.com/howz97/algorithm")[github.com/howz97/algorithm] #h(1fr) 始于 2019/07 \
用Golang实现的算法库，覆盖Sedgewick的教材《Algorithms》所有内容。包括:
- binary tree, avl tree, red-black tree, hash map
- bfs, dfs, kosaraju, minimum spanning tree (prim, kruskal), shortest path (dijkstra, topological, bellmanford)
- string sort, trie tree, substring search, regular expression, data compression
- binary heap, leftist heap, binomial heap

*LSM-Tree* #link("https://github.com/howz97/lsm-tree")[github.com/howz97/lsm-tree] \
基于lsm-tree实现的KV存储。 实现了基本的 compaction, WAL, 基于MVCC的transaction, 以及 serializable snapshot isolation

*Bitcask* #link("https://github.com/howz97/bitcask")[github.com/howz97/bitcask] \
基于bitcask的KV存储, 用 async rust实现

*Time-wheel* #link("https://github.com/howz97/time_wheel")[github.com/howz97/time_wheel] \
Rust实现的timer

*开源贡献* \
- #link("https://github.com/etcd-io/etcd/pull/13870")[github.com/etcd-io/etcd/pull/13870]
- #link("https://github.com/MariaDB/server/pull/2813")[github.com/MariaDB/server/pull/2813]
