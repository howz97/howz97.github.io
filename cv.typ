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

= Hao Zhang (张豪)

zhanghao997\@qq.com |
#link("https://github.com/howz97")[github.com/howz97] | #link("https://www.yuque.com/ha0zhang")[yuque]

== Skills
#chiline()

Programing Language: C++, Rust, Golang \
Tech skills: Algorithm, Raft, Database  \

== Education
#chiline()

#link("https://net.ncepu.edu.cn/")[*NCEPU*] #h(1fr) 2016/09 -- 2020/07 \
Bachelor of software engineering #h(1fr) Baoding \

== Work Experience
#chiline()

#link("https://www.eloqdata.com/")[*EloqData*] #h(1fr) Since 2022/11 \
Software Engineer #h(1fr) Beijing \
- [C++] Develop the underlying KV storage engine *EloqStore* for EloqSQL and EloqKV. EloqStore adopts a COW-B+Tree structure for data storage to achieve stable low-latency read performance, and combines io_uring with coroutines to maximize NVMe SSD performance.
- [C++] Develop #link("https://www.eloqdata.com/docs/monosql-mysql-diff")[*MonoSQL*]. MonoSQL is a stateless sql wrapper for DynamoDB, which can be regarded as a middleware between MariaDB and DynamoDB.
- [C++] Build *EloqCDC* from scratch. EloqCDC is used to replicate incremental data from #link("https://www.eloqdata.com/eloqsql/introduction")[EloqSQL] to downstream platform like OLAP/Kafka
- [C++] Build *EloqLoad* from scratch. A tool used for importing data at TB scale to EloqSQL quickly
- [Rust] Develop the command line tool #link("https://www.eloqdata.com/downloadeloqctl")[*eloqctl*] for deploying and controlling EloqSQL/EloqKV clusters
- [Golang] #link("https://github.com/monographdb/tidb")[github.com/monographdb/tidb] Develop *EloqDM* based on TiDB-DM. EloqDM can be used as the data migration tool for EloqSQL.
- [Golang] #link("https://github.com/monographdb/codis")[github.com/monographdb/codis] Develop *Codis* to make it compatible with EloqKV
- [Golang] #link("https://github.com/monographdb/juicefs")[github.com/monographdb/juicefs] Develop *JuiceFS* to store metadata in EloqKV.
- [Shell] Build the CI release workflow of EloqSQL and EloqKV based on Concourse

#link("https://www.tap4fun.com/")[*Tap4fun*] #h(1fr) 2020/07 -- 2021/12 \
Golang Developer #h(1fr) Chengdu \
Participating the development of the server side of games "Age of Apes" and "Invasion"

== Network Courses
#chiline()

*TinyKV* #link("https://github.com/howz97/tinykv")[github.com/howz97/tinykv] \
Distributed scalable key/value storage that data is sharded into multiple raft groups. Cluster scale is happening with raft configuration change and won't block data access. Transaction is implemented based on MVCC and thus have snapshot isolation level. 

*MIT6.824* #link("https://github.com/howz97/mit6.824")[github.com/howz97/mit6.824] (private repo) \
Distributed scalable key/value storage that data is sharded into multiple raft groups. Cluster scale is triggered by a HA master cluster and migrate shard in a blocking way.

*CMU15-445* #link("https://github.com/howz97/bustub")[github.com/howz97/bustub] \
A lab-level relational database.

*CMU15-721* #link("https://github.com/howz97/postgres/tree/2023-S721-P1")[github.com/howz97/postgres/tree/2023-S721-P1] \
Implement a foreign data wrapper for PostgreSQL to support columnar storage.

*ToyOS* #link("https://github.com/howz97/toyos")[github.com/howz97/toyos] \
A toy os kernel implemented by following the guidance of #link("https://os.phil-opp.com/")["Writing an OS in Rust"] blog series.

== Personal Projects
#chiline()

*Algorithm Library* #link("https://github.com/howz97/algorithm")[github.com/howz97/algorithm] #h(1fr) Since 2019/07 \
A algorithm library written in golang, covering the book "Algorithms" by Sedgewick. This library includes:
- binary tree, avl tree, red-black tree, hash map
- bfs, dfs, kosaraju, minimum spanning tree (prim, kruskal), shortest path (dijkstra, topological, bellmanford)
- string sort, trie tree, substring search, regular expression, data compression
- binary heap, leftist heap, binomial heap

*LSM-Tree* #link("https://github.com/howz97/lsm-tree")[github.com/howz97/lsm-tree] \
Lightweight key/value storage engine based on lsm-tree. Implemented basic compaction, WAL, MVCC based transaction, and serializable snapshot isolation.

*Bitcask* #link("https://github.com/howz97/bitcask")[github.com/howz97/bitcask] \
Lightweight key/value storage engine based on bitcask, written in async rust.

*Time-wheel* #link("https://github.com/howz97/time_wheel")[github.com/howz97/time_wheel] \
A timer written in rust.

*Open-Source Contributions* \
- #link("https://github.com/etcd-io/etcd/pull/13870")[github.com/etcd-io/etcd/pull/13870]
- #link("https://github.com/MariaDB/server/pull/2813")[github.com/MariaDB/server/pull/2813]
