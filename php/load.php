<?php
require 'db.php';

//Sommelier
function loadFeeling()
{
    $db = new DB;
    $conn = $db->connect();

    $stmt = $conn->prepare("SELECT * FROM feelings");
    $stmt->execute();
    $feeling = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $feeling;
}

if (isset($_POST['cid'])) {
    $db = new DB;
    $conn = $db->connect();
    $stmt = $conn->prepare("SELECT * FROM main_dishes WHERE fk_cat = " . $_POST['cid']);
    $stmt->execute();
    $main = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($main);
}

function loadCateg()
{
    $db = new DB;
    $conn = $db->connect();

    $stmt = $conn->prepare("SELECT * FROM categories");
    $stmt->execute();
    $categ = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $categ;
}

if (isset($_POST['rid'])) {
    $db = new DB;
    $conn = $db->connect();
    $stmt = $conn->prepare("SELECT * FROM provinces WHERE fk_reg = " . $_POST['rid']);
    $stmt->execute();
    $province = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($province);
}

function loadRegions()
{
    $db = new DB;
    $conn = $db->connect();

    $stmt = $conn->prepare("SELECT * FROM regions");
    $stmt->execute();
    $region = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $region;
}

function loadSituation()
{
    $db = new DB;
    $conn = $db->connect();

    $stmt = $conn->prepare("SELECT * FROM situations");
    $stmt->execute();
    $situation = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $situation;
}

//Result
if (isset($_POST["submit"])) {
    $db = new DB;
    $conn = $db->connect();

    $formMain = $_POST["main"];
    $formProvinces = $_POST["province"];
    $formSituations = $_POST["situation"];
    $formBudget = $_POST["budget"];

    $stmt = $conn->prepare(
        "INSERT INTO users (main_dish, province, situation, budget)
         VALUES ('$formMain', '$formProvinces', '$formSituations', '$formBudget')");
    $stmt->execute();
}

function loadResult()
{
    $db = new DB;
    $conn = $db->connect();

    $stmt = $conn->prepare(
        "SELECT DISTINCT name, img, status, type, winery, flavour, months, alcohol, avg_price
         FROM wines
         WHERE avg_price <=
                  (SELECT budget
                   FROM users
                   WHERE id_user IN
                                 (SELECT MAX(id_user)
                                  FROM users))
         AND fk_prov IN
                  (SELECT id_prov
                     FROM provinces
                     WHERE province IN
                                 (SELECT province
                                 FROM users
                                 WHERE id_user IN
                                             (SELECT MAX(id_user)
                                              FROM users)))
         AND id_wine IN
                  (SELECT id_wine
                   FROM mains_wines
                   WHERE id_main IN
                                 (SELECT id_main
                                  FROM main_dishes
                                  WHERE main_dish IN
                                             (SELECT main_dish
                                              FROM users
                                              WHERE id_user IN
                                                            (SELECT MAX(id_user)
                                                             FROM users))))
         AND  fk_sit IN
                  (SELECT id_sit
                   FROM situations
                   WHERE situation IN
                                 (SELECT situation
                                  FROM users
                                  WHERE id_user IN
                                             (SELECT MAX(id_user)
                                              FROM users)))"
    );
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}

//Winery
function loadWines()
{
    $db = new DB;
    $conn = $db->connect();

    $stmt = $conn->prepare("SELECT * FROM wines");
    $stmt->execute();
    $wine = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $wine;
}
