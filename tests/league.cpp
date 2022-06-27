//
// Created by Bertrand Begouin on 26/06/2022.
//

//
// Created by Bertrand Begouin on 26/05/2022.
//
#include "domain/league/League.h"
#include "infra/database/MysqlAdapter.h"
#include "gtest/gtest.h"

TEST(leagueTest, createTeamLeagueObject) {
auto* liga = new League();
EXPECT_NE(liga, nullptr);
}