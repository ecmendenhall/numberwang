#!/bin/bash
source assert.sh
source numberwang.sh

# 1 is not numberwang
assert "numberwang 1" "not numberwang"

# 3 is numberwang
# assert "numberwang 3" "that's numberwang!"

# 4 is not numberwang
# assert "numberwang 4" "not numberwang"

# 5 is numberwang
# assert "numberwang 5" "that's numberwang!"

# 15 is wangernumb
# assert "numberwang 15" "that's wangernumb!"

# calling numberwang without arguments prints 1 through 15
read -r -d '' NUMBERWANG <<'NW'
1 not numberwang
2 not numberwang
3 that's numberwang!
4 not numberwang
5 that's numberwang!
6 that's numberwang!
7 not numberwang
8 not numberwang
9 that's numberwang!
10 that's numberwang!
11 not numberwang
12 that's numberwang!
13 not numberwang
14 not numberwang
15 that's wangernumb!
NW
# assert "numberwang" "$NUMBERWANG"

assert_end examples
