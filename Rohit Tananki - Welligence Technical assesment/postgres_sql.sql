SELECT
    a.name AS asset_name,
    b.name AS basin,
    ar.pdp_oil,
    AVG(atp.oil) AS average_oil_production
FROM
    assets a
JOIN
    basins b ON a.basin_id = b.id
JOIN
    asset_reserves ar ON a.id = ar.asset_id
JOIN
    asset_total_productions atp ON a.id = atp.asset_id
GROUP BY
    a.name, b.name, ar.pdp_oil
ORDER BY
    average_oil_production;