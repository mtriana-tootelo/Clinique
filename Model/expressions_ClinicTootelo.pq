
 let
     Source = Sql.Database("bjsbd_prod.tootelo.com\pinst01", "AccesSante"),
     dbo_ClinicTootelo = Source{[Schema="dbo",Item="ClinicTootelo"]}[Data],
     ClinicId = dbo_ClinicTootelo[ClinicId],
     clinicIdsStr = Text.Combine(ClinicId, ",")
 in
     clinicIdsStr
 