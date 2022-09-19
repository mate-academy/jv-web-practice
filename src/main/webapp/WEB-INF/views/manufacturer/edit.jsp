<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${name} (${country})</title>
</head>
<body>
    <jsp:include page="../header.jsp"/>

    <h1>${title}</h1>

    <form action="/manufacturers/delete/${id}" method="get">
        <input type="text" name="id" readonly value="${id}" style='background:lightgrey' , size="2">
        <input type="submit" value="DELETE" style="background-color: red">
    </form>

    <form action="/manufacturers/${id}" method="post">
        <label for="manufacturer"> MANUFACTURER: </label>
        <input type="text" id="manufacturer" name="name" value="${name}" placeholder="Ferrari" pattern=".{3,}">

        <input list="countries" name="country" value="${country}" placeholder="Italy" pattern=".{3,}">
        <datalist id="countries">
            <option value="Afghanistan">
            <option value="Albania">
            <option value="Algeria">
            <option value="Andorra">
            <option value="Angola">
            <option value="Antigua and Barbuda">
            <option value="Argentina">
            <option value="Armenia">
            <option value="Australia">
            <option value="Austria">
            <option value="Azerbaijan">
            <option value="Bahamas">
            <option value="Bahrain">
            <option value="Bangladesh">
            <option value="Barbados">
            <option value="Belarus">
            <option value="Belgium">
            <option value="Belize">
            <option value="Benin">
            <option value="Bhutan">
            <option value="Bolivia">
            <option value="Bosnia and Herzegovina">
            <option value="Botswana">
            <option value="Brazil">
            <option value="Brunei">
            <option value="Bulgaria">
            <option value="Burkina Faso">
            <option value="Burundi">
            <option value="Côte d'Ivoire">
            <option value="Cabo Verde">
            <option value="Cambodia">
            <option value="Cameroon">
            <option value="Canada">
            <option value="Central African Republic">
            <option value="Chad">
            <option value="Chile">
            <option value="China">
            <option value="Colombia">
            <option value="Comoros">
            <option value="Congo (Congo-Brazzaville)">
            <option value="Costa Rica">
            <option value="Croatia">
            <option value="Cuba">
            <option value="Cyprus">
            <option value="Czechia (Czech Republic)">
            <option value="Democratic Republic of the Congo">
            <option value="Denmark">
            <option value="Djibouti">
            <option value="Dominica">
            <option value="Dominican Republic">
            <option value="Ecuador">
            <option value="Egypt">
            <option value="El Salvador">
            <option value="Equatorial Guinea">
            <option value="Eritrea">
            <option value="Estonia">
            <option value="Eswatini (fmr. Swaziland)">
            <option value="Ethiopia">
            <option value="Fiji">
            <option value="Finland">
            <option value="France">
            <option value="Gabon">
            <option value="Gambia">
            <option value="Georgia">
            <option value="Germany">
            <option value="Ghana">
            <option value="Greece">
            <option value="Grenada">
            <option value="Guatemala">
            <option value="Guinea">
            <option value="Guinea-Bissau">
            <option value="Guyana">
            <option value="Haiti">
            <option value="Holy See">
            <option value="Honduras">
            <option value="Hungary">
            <option value="Iceland">
            <option value="India">
            <option value="Indonesia">
            <option value="Iran">
            <option value="Iraq">
            <option value="Ireland">
            <option value="Israel">
            <option value="Italy">
            <option value="Jamaica">
            <option value="Japan">
            <option value="Jordan">
            <option value="Kazakhstan">
            <option value="Kenya">
            <option value="Kiribati">
            <option value="Kuwait">
            <option value="Kyrgyzstan">
            <option value="Laos">
            <option value="Latvia">
            <option value="Lebanon">
            <option value="Lesotho">
            <option value="Liberia">
            <option value="Libya">
            <option value="Liechtenstein">
            <option value="Lithuania">
            <option value="Luxembourg">
            <option value="Madagascar">
            <option value="Malawi">
            <option value="Malaysia">
            <option value="Maldives">
            <option value="Mali">
            <option value="Malta">
            <option value="Marshall Islands">
            <option value="Mauritania">
            <option value="Mauritius">
            <option value="Mexico">
            <option value="Micronesia">
            <option value="Moldova">
            <option value="Monaco">
            <option value="Mongolia">
            <option value="Montenegro">
            <option value="Morocco">
            <option value="Mozambique">
            <option value="Myanmar (formerly Burma)">
            <option value="Namibia">
            <option value="Nauru">
            <option value="Nepal">
            <option value="Netherlands">
            <option value="New Zealand">
            <option value="Nicaragua">
            <option value="Niger">
            <option value="Nigeria">
            <option value="North Korea">
            <option value="North Macedonia">
            <option value="Norway">
            <option value="Oman">
            <option value="Pakistan">
            <option value="Palau">
            <option value="Palestine State">
            <option value="Panama">
            <option value="Papua New Guinea">
            <option value="Paraguay">
            <option value="Peru">
            <option value="Philippines">
            <option value="Poland">
            <option value="Portugal">
            <option value="Qatar">
            <option value="Romania">
            <option value="Russia">
            <option value="Rwanda">
            <option value="Saint Kitts and Nevis">
            <option value="Saint Lucia">
            <option value="Saint Vincent and the Grenadines">
            <option value="Samoa">
            <option value="San Marino">
            <option value="Sao Tome and Principe">
            <option value="Saudi Arabia">
            <option value="Senegal">
            <option value="Serbia">
            <option value="Seychelles">
            <option value="Sierra Leone">
            <option value="Singapore">
            <option value="Slovakia">
            <option value="Slovenia">
            <option value="Solomon Islands">
            <option value="Somalia">
            <option value="South Africa">
            <option value="South Korea">
            <option value="South Sudan">
            <option value="Spain">
            <option value="Sri Lanka">
            <option value="Sudan">
            <option value="Suriname">
            <option value="Sweden">
            <option value="Switzerland">
            <option value="Syria">
            <option value="Tajikistan">
            <option value="Tanzania">
            <option value="Thailand">
            <option value="Timor-Leste">
            <option value="Togo">
            <option value="Tonga">
            <option value="Trinidad and Tobago">
            <option value="Tunisia">
            <option value="Turkey">
            <option value="Turkmenistan">
            <option value="Tuvalu">
            <option value="Uganda">
            <option value="Ukraine">
            <option value="United Arab Emirates">
            <option value="United Kingdom">
            <option value="United States of America">
            <option value="Uruguay">
            <option value="Uzbekistan">
            <option value="Vanuatu">
            <option value="Venezuela">
            <option value="Vietnam">
            <option value="Yemen">
            <option value="Zambia">
            <option value="Zimbabwe">
        </datalist>

        <input type="submit" value="UPDATE" style="background-color: orange">
    </form>

    <jsp:include page="../footer.jsp"/>
</body>
</html>
