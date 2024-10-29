<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Conference Registration Form</title>
    <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="style.css" />
</head>
<body>
<div class="header">
    <h1>Conference Registration Form</h1>
</div>

<div class="form-container mt-5">
    <form action="RegisterServlet" method="POST">
        <div class="row">
            <div class="col-md-6 form-group">
                <label for="first-name"
                >First Name<span style="color: #ba0303">*</span></label
                >
                <input
                        type="text"
                        class="form-control"
                        id="first-name"
                        name="firstName"
                />
            </div>
            <div class="col-md-6 form-group">
                <label for="last-name"
                >Last Name<span style="color: #ba0303">*</span></label
                >
                <input
                        type="text"
                        class="form-control"
                        id="last-name"
                        name="lastName"
                        required
                />
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 form-group">
                <label for="city">City</label>
                <input type="text" class="form-control" id="city" name="city" />
            </div>
            <div class="col-md-6 form-group">
                <label for="region">Region</label>
                <input type="text" class="form-control" id="region" name="region" />
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 form-group">
                <label for="postal-code">Zip Code</label>
                <input
                        type="text"
                        class="form-control"
                        id="postal-code"
                        name="postalCode"
                />
            </div>
            <div class="col-md-6 form-group">
                <label for="country">Country</label>
                <input class="form-control" id="country" name="country" />
            </div>
        </div>
        <div class="row">
            <div class="form-group col-md-6">
                <label for="conference-title"
                >Your Conference Program Title<span style="color: #ba0303"
                >*</span
                ></label
                >
                <input
                        type="text"
                        class="form-control"
                        id="conference-title"
                        name="conferenceTitle"
                        required
                />
            </div>
        </div>
        <div class="form-group">
            <label
            >Do you require accommodations?
                <span style="color: #ba0303">*</span></label
            ><br />
            <div class="form-check form-check-inline">
                <input
                        class="form-check-input"
                        type="radio"
                        name="accommodation"
                        id="accommodation-yes"
                        value="Yes"
                        required
                />
                <label class="form-check-label" for="accommodation-yes">Yes</label>
            </div>
            <div class="form-check form-check-inline">
                <input
                        class="form-check-input"
                        type="radio"
                        name="accommodation"
                        id="accommodation-no"
                        value="No"
                />
                <label class="form-check-label" for="accommodation-no">No</label>
            </div>
        </div>

        <div class="form-group">
            <label>Attending*</label><br />
            <div class="form-check form-check-inline">
                <input
                        class="form-check-input"
                        type="checkbox"
                        id="morning-sessions"
                        name="attending[]"
                        value="Morning Sessions"
                />
                <label class="form-check-label" for="morning-sessions"
                >Morning Sessions</label
                >
            </div>
            <div class="form-check form-check-inline">
                <input
                        class="form-check-input"
                        type="checkbox"
                        id="afternoon-sessions"
                        name="attending[]"
                        value="Afternoon Sessions"
                />
                <label class="form-check-label" for="afternoon-sessions"
                >Afternoon Sessions</label
                >
            </div>
            <div class="form-check form-check-inline">
                <input
                        class="form-check-input"
                        type="checkbox"
                        id="workshops"
                        name="attending[]"
                        value="Workshops"
                />
                <label class="form-check-label" for="workshops">Workshops</label>
            </div>
            <div class="form-check form-check-inline">
                <input
                        class="form-check-input"
                        type="checkbox"
                        id="dinner-banquet"
                        name="attending[]"
                        value="Dinner Banquet"
                />
                <label class="form-check-label" for="dinner-banquet"
                >Dinner Banquet</label
                >
            </div>
        </div>

        <button type="submit" class="btn register-btn btn-block">
            Register
        </button>
    </form>
</div>
</body>
</html>
