﻿using UnityEngine;
using System.Collections;
using SLua;
public class VarObj : MonoBehaviour {

    LuaSvr l;
    // Use this for initialization
    void Start()
    {
        l = new LuaSvr("varobj.lua.txt");
    }
}