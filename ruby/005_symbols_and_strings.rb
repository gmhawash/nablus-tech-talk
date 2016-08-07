#!/usr/bin/env ruby
#
# Strings and symbols
#

# Strings are allocated for each instance

p "What".object_id
p "What".object_id

# Symboles are allocated ONCE
p :what.object_id
p :what.object_id
