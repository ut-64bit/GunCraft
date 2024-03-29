#   Copyright © 2020 赤石愛

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

execute if entity @s[tag=ScoreToHealth.Modified] run function gc_score_to_health:restore
execute unless entity @s[tag=ScoreToHealth.Return] if score @s ScoreToHealth matches -2147483648.. run function gc_score_to_health:check
tag @s[tag=ScoreToHealth.Return] remove ScoreToHealth.Return
advancement revoke @s only gc_score_to_health:player_tick
