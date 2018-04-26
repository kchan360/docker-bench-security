#!/bin/sh

check_8() {
  logit "\n"
  info "8 - Docker Network Operations"
}

# 8.1
check_8_1() {
  check_8_1="8.1  - List of docker network"
  totalChecks=$((totalChecks + 1))
  result=$(docker network ls | wc -l)
  network_nb=`expr $result - 1`
  network=$(docker network ls)

    info "$check_8_1"
    info "     * There are currently: $network_nb network"
    info "$network"

  currentScore=$((currentScore + 0))
}
