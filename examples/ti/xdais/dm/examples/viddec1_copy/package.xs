/*
 *  Copyright 2010 by Texas Instruments Incorporated.
 *
 */

/* 
 * Copyright (c) 2010, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 */
/*
 *  ======== package.xs ========
 *    Implementation of the xdc.IPackage interface.
 */

/*
 *  ======== getLibs ========
 *  Determine the name of the library to use, based on the program
 *  configuration (prog).
 */
function getLibs(prog)
{
    var name = "";
    var suffix = "";

    /*
     * If this package was built with XDC 3.10 or later, we can use the
     * findSuffix() method to locate a compatible library in this package.
     * Otherwise, we fall back to providing a lib with the suffix matching
     * the target of the executable using this library.
     */

    if ("findSuffix" in prog.build.target) {
        suffix = prog.build.target.findSuffix(this);
        if (suffix == null) {
            /* no matching lib found in this package, return "" */
            return ("");
        }
    } else {
        suffix = prog.build.target.suffix;
    }

    /* And finally, the location of the libraries are in lib/<profile>/* */
    name = "lib/" + this.profile + "/viddec1_copy.a" + suffix;

    /*
     * If the requested profile doesn't exist, we _could_ fail, or we could
     * [nicer] return the 'release' library.  Note, you can implement this
     * however you like - if you don't always provide a 'release' library,
     * you may want to either 'throw' an error, or return 'null', indicating
     * you don't have a library that meets the user's request.
     */
    if (!java.io.File(this.packageBase + name).exists()) {
        print(this.$name + "': Unable to locate lib for requested '" +
                this.profile + "' profile.  Using 'release' profile.");
        name = "lib/release/viddec1_copy.a" + suffix;
    }

    /* and dump a helpful breadcrumb */
    print("    will link with " + this.$name + ":" + name);

    return (name);
}
/*
 *  @(#) ti.xdais.dm.examples.viddec1_copy; 2, 0, 0,209; 9-18-2010 14:46:23; /db/wtree/library/trees/dais/dais-t03x/src/ xlibrary

 */

/*
 *  @(#) ti.xdais.dm.examples.viddec1_copy; 2, 0, 0,1; 12-2-2010 17:55:30; /db/atree/library/trees/ce/ce-r11x/imports/ xlibrary

 */

